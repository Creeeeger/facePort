.class public final synthetic Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
