.class public final synthetic Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILandroid/content/ComponentName;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput p1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;->f$3:I

    check-cast p1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "originalIntent : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TargetPresentationGetter"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method
