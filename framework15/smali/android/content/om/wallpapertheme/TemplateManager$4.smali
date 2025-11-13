.class Landroid/content/om/wallpapertheme/TemplateManager$4;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/om/wallpapertheme/TemplateManager;->getString(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/content/om/wallpapertheme/TemplateManager$UidItem;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/om/wallpapertheme/TemplateManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/om/wallpapertheme/TemplateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/om/wallpapertheme/TemplateManager$4;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;

    invoke-virtual {p0, p1}, Landroid/content/om/wallpapertheme/TemplateManager$4;->apply(Landroid/content/om/wallpapertheme/TemplateManager$UidItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/content/om/wallpapertheme/TemplateManager$UidItem;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method
