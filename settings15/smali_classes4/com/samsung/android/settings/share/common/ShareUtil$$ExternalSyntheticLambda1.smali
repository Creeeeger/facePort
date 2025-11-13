.class public final synthetic Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda1;->f$0:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda1;->f$0:Ljava/util/Optional;

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    new-instance v0, Lcom/samsung/android/settings/share/structure/CallerComponent;

    iget-object v1, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    iget p1, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    new-instance v2, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/share/structure/ShareComponent;-><init>(Landroid/content/ComponentName;ILandroid/util/Pair;)V

    return-object v0
.end method
