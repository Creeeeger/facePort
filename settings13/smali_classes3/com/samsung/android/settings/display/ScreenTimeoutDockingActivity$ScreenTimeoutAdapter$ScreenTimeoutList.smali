.class public Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;
.super Ljava/lang/Object;
.source "ScreenTimeoutDockingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenTimeoutList"
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mListItemTitle:Ljava/lang/String;

.field private mListItemValue:Ljava/lang/String;

.field final synthetic this$1:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 0

    .line 246
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->mIsChecked:Z

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->mListItemTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->mListItemValue:Ljava/lang/String;

    return-object p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->mIsChecked:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->mListItemTitle:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->mListItemValue:Ljava/lang/String;

    return-void
.end method
