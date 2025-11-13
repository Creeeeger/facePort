.class public abstract Lcom/samsung/android/lib/episode/EpisodeConstant;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DTD_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "7.61"

    goto :goto_0

    :sswitch_0
    const-string v0, "6.89"

    :goto_0
    sput-object v0, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xea60 -> :sswitch_0
        0xeac4 -> :sswitch_0
        0xeac5 -> :sswitch_0
    .end sparse-switch
.end method
