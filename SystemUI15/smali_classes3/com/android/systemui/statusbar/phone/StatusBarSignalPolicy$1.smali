.class public final Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateDesktopStatusBarIcons()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mAirplaneResId:I

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/util/DesktopManager;->setAirplaneMode(ZI)V

    return-void
.end method
