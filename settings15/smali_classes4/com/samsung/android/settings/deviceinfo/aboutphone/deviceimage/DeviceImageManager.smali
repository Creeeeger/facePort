.class public final Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceImageReceiver:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$2;

.field public mListener:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$$ExternalSyntheticLambda0;

.field public final mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    invoke-direct {v0, p1}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    return-void
.end method
