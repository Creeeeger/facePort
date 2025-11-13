.class Landroid/util/secutil/Log$NoPreloadHolder;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/secutil/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoPreloadHolder"
.end annotation


# static fields
.field public static final blacklist LOGGER_ENTRY_MAX_PAYLOAD:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/util/secutil/Log;->-$$Nest$smlogger_entry_max_payload_native()I

    move-result v0

    sput v0, Landroid/util/secutil/Log$NoPreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
