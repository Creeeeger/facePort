.class public final Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final layoutType:I

.field public final notifRemoteViewsFactoryContainer:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainer;

.field public final row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;->layoutType:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;->notifRemoteViewsFactoryContainer:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainer;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;->notifRemoteViewsFactoryContainer:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainer;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainerImpl;->factories:Lkotlin/collections/builders/SetBuilder;

    invoke-virtual {p1}, Lkotlin/collections/builders/SetBuilder;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    move-object v2, p1

    check-cast v2, Lkotlin/collections/builders/MapBuilder$Itr;

    invoke-virtual {v2}, Lkotlin/collections/builders/MapBuilder$Itr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lkotlin/collections/builders/MapBuilder$KeysItr;

    invoke-virtual {v2}, Lkotlin/collections/builders/MapBuilder$KeysItr;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactory;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;->layoutType:I

    move-object v3, v2

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactory;->instantiate(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILjava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    move-object v1, v2

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;->layoutType:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " tries to produce name:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with type:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". However, "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " produced view for "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " before."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
