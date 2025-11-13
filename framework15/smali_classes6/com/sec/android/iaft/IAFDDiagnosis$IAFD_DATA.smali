.class Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IAFD_DATA"
.end annotation


# instance fields
.field blacklist JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field blacklist JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field blacklist JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field blacklist NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field blacklist NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field blacklist controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

.field blacklist hashMapJE_ClassNameTB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
