.class public final synthetic Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ri : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TargetPresentationGetter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    invoke-direct {v1, v0, p0, p1}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v1
.end method
