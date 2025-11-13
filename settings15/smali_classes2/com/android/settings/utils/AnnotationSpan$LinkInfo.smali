.class public final Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActionable:Ljava/lang/Boolean;

.field public final mAnnotation:Ljava/lang/String;

.field public final mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "url"

    iput-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mAnnotation:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    :goto_0
    iget-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "link"

    iput-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mAnnotation:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    return-void
.end method
