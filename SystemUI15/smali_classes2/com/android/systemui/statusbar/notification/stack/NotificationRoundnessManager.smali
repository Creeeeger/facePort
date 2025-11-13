.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DISMISS_ANIMATION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;


# instance fields
.field public mAnimatedChildren:Ljava/util/HashSet;

.field public mIsClearAllInProgress:Z

.field public mRoundForPulsingViews:Z

.field public mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

.field public mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DismissAnimation"

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SourceType;->from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->DISMISS_ANIMATION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NotificationRoundnessManager"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "roundForPulsingViews="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundForPulsingViews:Z

    const-string v1, "isClearAllInProgress="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mIsClearAllInProgress:Z

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final setViewsAffectedBySwipe(Lcom/android/systemui/statusbar/notification/Roundable;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/Roundable;)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->DISMISS_ANIMATION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v1, v3, v2}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;)V

    :cond_3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p2, :cond_4

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2, v3, v3, v2}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;)V

    :cond_4
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    if-eqz p3, :cond_5

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p3, v3, v1, v2}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;)V

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V

    goto :goto_0

    :cond_6
    return-void
.end method
