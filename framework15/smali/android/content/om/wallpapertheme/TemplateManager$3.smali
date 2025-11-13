.class Landroid/content/om/wallpapertheme/TemplateManager$3;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/om/wallpapertheme/TemplateManager;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;
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
        "Ljava/lang/Integer;",
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

    iput-object p1, p0, Landroid/content/om/wallpapertheme/TemplateManager$3;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/content/om/wallpapertheme/TemplateManager$UidItem;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    iget-object v0, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/content/om/wallpapertheme/TemplateManager$3;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-static {v1}, Landroid/content/om/wallpapertheme/TemplateManager;->-$$Nest$fgetTAG(Landroid/content/om/wallpapertheme/TemplateManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

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

    invoke-virtual {p0, p1}, Landroid/content/om/wallpapertheme/TemplateManager$3;->apply(Landroid/content/om/wallpapertheme/TemplateManager$UidItem;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
