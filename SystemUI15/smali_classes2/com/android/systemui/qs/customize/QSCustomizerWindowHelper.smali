.class public final Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final WINDOW_PREFIX:I

.field public final WINDOW_TITLE:Ljava/lang/String;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final sysUIContext:Landroid/content/Context;

.field public windowRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->sysUIContext:Landroid/content/Context;

    const-string v0, "CustomizerDummyWindow"

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->WINDOW_TITLE:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->WINDOW_PREFIX:I

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method
