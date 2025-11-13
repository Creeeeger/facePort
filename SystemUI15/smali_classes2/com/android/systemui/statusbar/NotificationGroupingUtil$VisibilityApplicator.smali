.class public Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
