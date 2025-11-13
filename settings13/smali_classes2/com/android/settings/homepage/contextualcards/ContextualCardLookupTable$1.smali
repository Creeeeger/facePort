.class Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;
.super Ljava/util/TreeSet;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE:I

    const-class v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    const-class v3, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    const/4 v4, 0x2

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
