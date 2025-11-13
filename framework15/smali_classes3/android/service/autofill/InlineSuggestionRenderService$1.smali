.class Landroid/service/autofill/InlineSuggestionRenderService$1;
.super Landroid/util/LruCache;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/InlineSuggestionRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/InlineSuggestionRenderService;


# direct methods
.method constructor blacklist <init>(Landroid/service/autofill/InlineSuggestionRenderService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/autofill/InlineSuggestionRenderService$1;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist entryRemoved(ZLandroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "InlineSuggestionRenderService"

    const-string v1, "Hit max=30 entries in the cache. Releasing oldest one to make space."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    :cond_0
    return-void
.end method

.method public bridge synthetic whitelist entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    check-cast p2, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/autofill/InlineSuggestionRenderService$1;->entryRemoved(ZLandroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
