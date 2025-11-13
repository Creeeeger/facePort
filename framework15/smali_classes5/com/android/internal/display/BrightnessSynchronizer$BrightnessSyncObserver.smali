.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessSyncObserver"
.end annotation


# instance fields
.field private blacklist mIsObserving:Z

.field private final blacklist mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final synthetic blacklist this$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;

    invoke-direct {p1, p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;-><init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;)V

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;)V

    return-void
.end method

.method private blacklist createBrightnessContentObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .locals 1

    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;-><init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method blacklist isObserving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mIsObserving:Z

    return v0
.end method

.method blacklist startObserving(Landroid/os/Handler;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->createBrightnessContentObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mIsObserving:Z

    return-void
.end method
