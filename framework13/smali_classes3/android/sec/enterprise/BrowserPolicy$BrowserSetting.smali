.class public Landroid/sec/enterprise/BrowserPolicy$BrowserSetting;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrowserSetting"
.end annotation


# static fields
.field public static final blacklist BROWSER_AUTOFILL_SETTING:I = 0x4

.field public static final blacklist BROWSER_COOKIES_SETTING:I = 0x2

.field public static final blacklist BROWSER_FORCEFRAUDWARNING_SETTING:I = 0x8

.field public static final blacklist BROWSER_JAVASCRIPT_SETTING:I = 0x10

.field public static final blacklist BROWSER_POPUP_SETTING:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/sec/enterprise/BrowserPolicy;


# direct methods
.method public constructor blacklist <init>(Landroid/sec/enterprise/BrowserPolicy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/sec/enterprise/BrowserPolicy;

    .line 48
    iput-object p1, p0, Landroid/sec/enterprise/BrowserPolicy$BrowserSetting;->this$0:Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
