.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutForCamera:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->updateAffordanceIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    :cond_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
