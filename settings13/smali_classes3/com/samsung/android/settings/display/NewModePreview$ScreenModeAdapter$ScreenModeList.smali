.class public Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;
.super Ljava/lang/Object;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenModeList"
.end annotation


# instance fields
.field private mIsChecked:Z

.field private mListItemTitle:Ljava/lang/String;

.field private mListItemValue:I

.field final synthetic this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 0

    .line 530
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 526
    iget p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemValue:I

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 518
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemTitle:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 514
    iput p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemValue:I

    return-void
.end method
