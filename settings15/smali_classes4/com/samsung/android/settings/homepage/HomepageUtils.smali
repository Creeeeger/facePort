.class public abstract Lcom/samsung/android/settings/homepage/HomepageUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEPARATORS:Ljava/util/ArrayList;

.field public static final SEPARATORS_REPLACEMENT_SKIP_LIST:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "\uff0c"

    const-string/jumbo v2, "\u104a "

    const-string v3, ", "

    const-string/jumbo v4, "\u060c "

    const-string/jumbo v5, "\u3001"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "top_level_samsung_account"

    const-string/jumbo v2, "top_level_mde_suggestions"

    const-string/jumbo v3, "top_level_knox_policy_notice"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS_REPLACEMENT_SKIP_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 2

    const-string v0, "HomepageUtils"

    if-nez p0, :cond_0

    const-string p0, "activity is null."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    :try_start_0
    invoke-virtual {p0, v1, p1, p2, v1}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v1, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "No activity found for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
