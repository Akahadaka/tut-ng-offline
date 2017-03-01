import { OfflinePage } from './app.po';

describe('offline App', () => {
  let page: OfflinePage;

  beforeEach(() => {
    page = new OfflinePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
