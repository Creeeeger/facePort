.class Landroid/view/PointerIcon$1;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/PointerIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 913
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 914
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 915
    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 918
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 919
    .local v1, "systemIconResourceId":I
    if-eqz v1, :cond_1

    .line 920
    new-instance v2, Landroid/view/PointerIcon;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/view/PointerIcon;-><init>(ILandroid/view/PointerIcon-IA;)V

    .line 921
    .local v2, "icon":Landroid/view/PointerIcon;
    invoke-static {v2, v1}, Landroid/view/PointerIcon;->-$$Nest$fputmSystemIconResourceId(Landroid/view/PointerIcon;I)V

    .line 922
    return-object v2

    .line 925
    .end local v2    # "icon":Landroid/view/PointerIcon;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 926
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 927
    .local v3, "hotSpotX":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 929
    .local v4, "hotSpotY":F
    const/16 v5, 0x4e20

    if-ne v0, v5, :cond_2

    .line 930
    invoke-static {v2, v3, v4}, Landroid/view/PointerIcon;->-$$Nest$smcreateSpenIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v5

    return-object v5

    .line 931
    :cond_2
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 932
    invoke-static {v2, v3, v4, v0}, Landroid/view/PointerIcon;->-$$Nest$smcreateDefaultIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v5

    return-object v5

    .line 934
    :cond_3
    invoke-static {v2, v3, v4}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 936
    .end local v0    # "type":I
    .end local v1    # "systemIconResourceId":I
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "hotSpotX":F
    .end local v4    # "hotSpotY":F
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 939
    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 909
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/PointerIcon;
    .locals 1
    .param p1, "size"    # I

    .line 945
    new-array v0, p1, [Landroid/view/PointerIcon;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 909
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->newArray(I)[Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method
