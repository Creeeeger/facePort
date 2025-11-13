.class public Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;
.super Ljava/lang/Object;
.source "MouseFunctionKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MouseFunctionKeyAppInfo"
.end annotation


# instance fields
.field public mDB:Ljava/lang/String;

.field public mIsEnabled:Z

.field public mLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mIsEnabled:Z

    .line 43
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mDB:Ljava/lang/String;

    return-void
.end method
