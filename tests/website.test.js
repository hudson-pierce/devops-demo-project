const webdriver = require('selenium-webdriver');
const { Builder, Capabilities } = webdriver;
let capabilities = Capabilities.chrome();

describe("Test if website's title is correct", () => {
    let driver;

    beforeAll(async () => {
        driver = new Builder()
            .usingServer('http://selenium:4444/wd/hub')
            .withCapabilities(capabilities)
            .build();
        await driver.get("http://website/");
    }, 30000);

    it('test', async () => {
        try {
            let title = (await driver.getTitle()).trim();
            expect(title).toEqual("Welcome to Explore California");
        } catch (err) {
            throw err;
        }
    }, 35000);

    afterAll(async () => {
        await driver.quit();
    }, 40000);
});
