.class synthetic Lcom/samsung/android/sume/core/buffer/SharedBufferManager$1;
.super Ljava/lang/Object;
.source "SharedBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/buffer/SharedBufferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sume/core/types/ColorFormat;->values()[Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$1;->$SwitchMap$com$samsung$android$sume$core$types$ColorFormat:[I

    return-void
.end method
