.class public final synthetic Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->$r8$lambda$dD-YUu4t_wkWWx2nFJXugVVipY0(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    move-result-object p0

    return-object p0
.end method
