.class public final synthetic Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Landroid/content/om/OverlayInfo;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "com.android.internal.navigation_bar_mode"

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
