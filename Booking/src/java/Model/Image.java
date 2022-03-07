
package Model;


/**
 *
 * @author admin
 */
public class Image{

    public Image(int imageId, String imageLink, int productId) {
        this.imageId = imageId;
        this.imageLink = imageLink;
        this.productId = productId;
    }

    public Image() {
    }
    private int imageId;//image ID
    private String imageLink;//image link
    private int productId;//product ID

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

  
}
