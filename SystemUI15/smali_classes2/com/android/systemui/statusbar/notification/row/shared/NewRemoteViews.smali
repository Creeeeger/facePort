.class public final Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contracted:Landroid/widget/RemoteViews;

.field public final expanded:Landroid/widget/RemoteViews;

.field public final headsUp:Landroid/widget/RemoteViews;

.field public final minimizedGroupHeader:Landroid/widget/RemoteViews;

.field public final normalGroupHeader:Landroid/widget/RemoteViews;

.field public final public:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->contracted:Landroid/widget/RemoteViews;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->headsUp:Landroid/widget/RemoteViews;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->expanded:Landroid/widget/RemoteViews;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->public:Landroid/widget/RemoteViews;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method
