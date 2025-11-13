.class public final Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final priority:I

.field public final remoteViews:Landroid/widget/RemoteViews;

.field public final requestClass:Ljava/lang/String;

.field public final ripple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->remoteViews:Landroid/widget/RemoteViews;

    iput p4, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->priority:I

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    new-instance p3, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    const v3, 0x7f07047b

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->ripple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    new-instance p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView$1;-><init>(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
