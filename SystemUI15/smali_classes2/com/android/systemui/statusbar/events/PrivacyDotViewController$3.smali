.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpandedChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$updateStatusBarState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$updateStatusBarState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    return-void
.end method
