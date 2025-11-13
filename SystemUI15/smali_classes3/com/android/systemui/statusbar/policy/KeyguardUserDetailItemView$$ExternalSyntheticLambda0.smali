.class public final synthetic Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    sget v0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
