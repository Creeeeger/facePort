.class public final Lcom/samsung/android/settings/mde/MDESuggestionManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/samsung/android/settings/mde/MDESuggestionManager;


# instance fields
.field public mDismissedSuggestions:Ljava/util/ArrayList;


# direct methods
.method public static getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->sInstance:Lcom/samsung/android/settings/mde/MDESuggestionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->mDismissedSuggestions:Ljava/util/ArrayList;

    const-string v1, "MDESuggestionManager"

    const-string v2, "MDESuggestionManager()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->sInstance:Lcom/samsung/android/settings/mde/MDESuggestionManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->sInstance:Lcom/samsung/android/settings/mde/MDESuggestionManager;

    return-object v0
.end method
