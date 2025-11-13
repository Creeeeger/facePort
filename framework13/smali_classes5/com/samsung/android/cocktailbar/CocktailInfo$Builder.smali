.class public Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
.super Ljava/lang/Object;
.source "CocktailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCategory:I

.field private blacklist mClassInfo:Landroid/content/ComponentName;

.field private blacklist mContentInfo:Landroid/os/Bundle;

.field private blacklist mContentView:Landroid/widget/RemoteViews;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayPolicy:I

.field private blacklist mHelpView:Landroid/widget/RemoteViews;

.field private blacklist mOrientation:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    .line 60
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    .line 62
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    .line 64
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    .line 73
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .locals 2

    .line 112
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    .line 113
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-$$Nest$fputmOrientation(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 114
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-$$Nest$fputmDisplayPolicy(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 115
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-$$Nest$fputmCategory(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-$$Nest$fputmContentView(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-$$Nest$fputmHelpView(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-$$Nest$fputmUserId(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-$$Nest$fputmContentInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/os/Bundle;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->-$$Nest$fputmClassInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/content/ComponentName;)V

    .line 121
    return-object v0
.end method

.method public blacklist setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "category"    # I

    .line 87
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    .line 88
    return-object p0
.end method

.method public blacklist setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "classInfo"    # Landroid/content/ComponentName;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mClassInfo:Landroid/content/ComponentName;

    .line 108
    return-object p0
.end method

.method public blacklist setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    .line 98
    return-object p0
.end method

.method public blacklist setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 93
    return-object p0
.end method

.method public blacklist setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "displayPolicy"    # I

    .line 82
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    .line 83
    return-object p0
.end method

.method public blacklist setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mHelpView:Landroid/widget/RemoteViews;

    .line 103
    return-object p0
.end method

.method public blacklist setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "orientation"    # I

    .line 77
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    .line 78
    return-object p0
.end method
