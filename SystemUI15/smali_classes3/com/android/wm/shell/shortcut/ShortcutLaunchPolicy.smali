.class public abstract Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

.field public final mSupportMultiSplitStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shortcut/ShortcutController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    iput-boolean p2, p0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mSupportMultiSplitStatus:Z

    return-void
.end method


# virtual methods
.method public abstract handleShortCutKeys(Landroid/view/KeyEvent;)V
.end method
