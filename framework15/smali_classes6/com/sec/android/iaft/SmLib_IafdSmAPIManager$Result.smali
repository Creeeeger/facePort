.class Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;
.super Ljava/lang/Object;
.source "SmLib_IafdSmAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/SmLib_IafdSmAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Result"
.end annotation


# instance fields
.field public blacklist pkgName:Ljava/lang/String;

.field public blacklist resultCode:I

.field public blacklist versionCode:J

.field public blacklist versionName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/SmLib_IafdSmAPIManager$Result;-><init>()V

    return-void
.end method
