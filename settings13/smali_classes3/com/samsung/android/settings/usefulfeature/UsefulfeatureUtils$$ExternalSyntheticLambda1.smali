.class public final synthetic Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->$r8$lambda$rXrPL_ISIOV141y93sv_ZiVV4sE(Ljava/util/List;Ljava/util/List;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method
