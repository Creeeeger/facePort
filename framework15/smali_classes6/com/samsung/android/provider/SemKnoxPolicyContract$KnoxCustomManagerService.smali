.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$KnoxCustomManagerService;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxCustomManagerService"
.end annotation


# static fields
.field public static final blacklist NAME1:Ljava/lang/String; = "KnoxCustomManagerService1"

.field public static final blacklist NAME2:Ljava/lang/String; = "KnoxCustomManagerService2"

.field public static final blacklist SEALED_STATE:Ljava/lang/String; = "getSealedState"

.field public static final blacklist SEALED_USB_MASSSTORAGE_STATE:Ljava/lang/String; = "getSealedUsbMassStorageState"

.field public static final blacklist URI1:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService1"

.field public static final blacklist URI2:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService2"

.field public static final blacklist USB_CONNECTION_TYPE_INTERNAL:Ljava/lang/String; = "getUsbConnectionTypeInternal"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
