.class public Lcom/sec/android/iaft/IAFDService$IAFDBinder;
.super Lcom/sec/android/iaft/IIAFDService$Stub;
.source "IAFDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IAFDBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDService;


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/iaft/IAFDService;

    .line 28
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDService$IAFDBinder;->this$0:Lcom/sec/android/iaft/IAFDService;

    invoke-direct {p0}, Lcom/sec/android/iaft/IIAFDService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist IAFDParse(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;
    .param p3, "puserId"    # I
    .param p4, "appuid"    # I
    .param p5, "flags"    # I
    .param p6, "exceptionClassName"    # Ljava/lang/String;
    .param p7, "exceptionMessage"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist IAFDShow(IILjava/lang/String;)V
    .locals 1
    .param p1, "puserId"    # I
    .param p2, "appuid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/iaft/IAFDDiagnosis;->showIAFDCrashDialogs(IILjava/lang/String;)Z

    .line 35
    return-void
.end method
