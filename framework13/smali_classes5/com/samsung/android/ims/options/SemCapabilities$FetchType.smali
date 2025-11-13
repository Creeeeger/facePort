.class public Lcom/samsung/android/ims/options/SemCapabilities$FetchType;
.super Ljava/lang/Object;
.source "SemCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FetchType"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist FETCH_TYPE_OTHER:I = 0x0

.field public static final whitelist FETCH_TYPE_POLL:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/options/SemCapabilities;


# direct methods
.method public constructor whitelist <init>(Lcom/samsung/android/ims/options/SemCapabilities;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ims/options/SemCapabilities;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$FetchType;->this$0:Lcom/samsung/android/ims/options/SemCapabilities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
