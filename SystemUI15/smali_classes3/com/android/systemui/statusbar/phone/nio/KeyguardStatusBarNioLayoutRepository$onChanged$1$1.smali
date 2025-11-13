.class public final Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isIcon:Z

.field public final synthetic $showOnKeyguard:Z

.field public final synthetic $this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;->$showOnKeyguard:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;->$isIcon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;->$showOnKeyguard:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isShowNotificationOnKeyguard:Z

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isShowNotificationOnKeyguard:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;->$isIcon:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isNotificationIconsOnlyOn:Z

    if-eq v1, p0, :cond_1

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isNotificationIconsOnlyOn:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :cond_1
    return-void
.end method
