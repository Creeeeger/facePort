.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;


# instance fields
.field public mIsKeyguardOccluded:Z

.field public mIsKeyguardVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;->mIsKeyguardVisible:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;->mIsKeyguardOccluded:Z

    return-void
.end method
