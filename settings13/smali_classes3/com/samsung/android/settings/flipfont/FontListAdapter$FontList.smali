.class public Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;
.super Ljava/lang/Object;
.source "FontListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/FontListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontList"
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mListItemTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 0

    .line 331
    iget-boolean p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->mIsChecked:Z

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->mListItemTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->mIsChecked:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->mListItemTitle:Ljava/lang/String;

    return-void
.end method
