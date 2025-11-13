.class public Lcom/samsung/android/settings/mde/MDESuggestionManager;
.super Ljava/lang/Object;
.source "MDESuggestionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MDESuggestionManager"

.field private static sInstance:Lcom/samsung/android/settings/mde/MDESuggestionManager;


# instance fields
.field private mDismissedSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->mDismissedSuggestions:Ljava/util/ArrayList;

    .line 17
    sget-object p0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->TAG:Ljava/lang/String;

    const-string v0, "MDESuggestionManager()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->sInstance:Lcom/samsung/android/settings/mde/MDESuggestionManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/mde/MDESuggestionManager;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->sInstance:Lcom/samsung/android/settings/mde/MDESuggestionManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->sInstance:Lcom/samsung/android/settings/mde/MDESuggestionManager;

    return-object v0
.end method


# virtual methods
.method public addDismissedSuggestion(Ljava/lang/String;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->mDismissedSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDismissedSuggestions()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionManager;->mDismissedSuggestions:Ljava/util/ArrayList;

    return-object p0
.end method
