.class Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;
.super Ljava/util/HashMap;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x835

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x836

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x837

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x89a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x899

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3f0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x89b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
