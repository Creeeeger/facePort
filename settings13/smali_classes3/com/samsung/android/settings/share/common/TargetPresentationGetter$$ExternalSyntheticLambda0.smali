.class public final synthetic Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput p4, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$3:I

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->$r8$lambda$8nn24urzYG0RBGs2xEXe1X2-D_M(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method
