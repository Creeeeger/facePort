.class public final Lcom/android/systemui/statusbar/phone/TapAgainViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/TapAgainViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TapAgainViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->access$100(Lcom/android/systemui/statusbar/phone/TapAgainViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/TapAgainView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TapAgainView;->updateColor()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->access$000(Lcom/android/systemui/statusbar/phone/TapAgainViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/TapAgainView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TapAgainView;->updateColor()V

    return-void
.end method
