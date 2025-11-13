.class Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;
.super Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ILongParamGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic blacklist getParam()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;->getParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getParam()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->-$$Nest$smgetEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;->mID:I

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->getLongParam(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
