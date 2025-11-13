.class Landroid/app/LoadedApk$1;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/LoadedApk;->registerAppInfoToArt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor blacklist <init>(Landroid/app/LoadedApk;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/LoadedApk;

    .line 1229
    iput-object p1, p0, Landroid/app/LoadedApk$1;->this$0:Landroid/app/LoadedApk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 1233
    const/16 v0, 0xbb8

    .line 1234
    .local v0, "spegMaxTimeWaitingMs":I
    const/16 v1, 0x32

    .line 1237
    .local v1, "spegSleepTimeMs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/LoadedApk$1;->this$0:Landroid/app/LoadedApk;

    invoke-static {v3}, Landroid/app/LoadedApk;->-$$Nest$misSpeg(Landroid/app/LoadedApk;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v2, v0, :cond_0

    .line 1239
    int-to-long v3, v1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    goto :goto_1

    .line 1240
    :catch_0
    move-exception v3

    .line 1237
    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 1245
    .end local v2    # "i":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/LoadedApk$1;->this$0:Landroid/app/LoadedApk;

    invoke-static {v2}, Landroid/app/LoadedApk;->-$$Nest$mspegRestore(Landroid/app/LoadedApk;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1248
    goto :goto_2

    .line 1246
    :catch_1
    move-exception v2

    .line 1249
    :goto_2
    return-void
.end method
