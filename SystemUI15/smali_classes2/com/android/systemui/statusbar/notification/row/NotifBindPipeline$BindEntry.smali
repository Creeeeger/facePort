.class public final Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callbacks:Ljava/util/Set;

.field public invalidated:Z

.field public row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->callbacks:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V

    return-void
.end method
