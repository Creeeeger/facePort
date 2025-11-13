.class Landroid/widget/directwriting/DirectWritingServiceBinder$Singleton;
.super Ljava/lang/Object;
.source "DirectWritingServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/directwriting/DirectWritingServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final blacklist instance:Landroid/widget/directwriting/DirectWritingServiceBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetinstance()Landroid/widget/directwriting/DirectWritingServiceBinder;
    .locals 1

    sget-object v0, Landroid/widget/directwriting/DirectWritingServiceBinder$Singleton;->instance:Landroid/widget/directwriting/DirectWritingServiceBinder;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-direct {v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;-><init>()V

    sput-object v0, Landroid/widget/directwriting/DirectWritingServiceBinder$Singleton;->instance:Landroid/widget/directwriting/DirectWritingServiceBinder;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "[DWL]"

    const-string v1, "DirectWritingServiceBinder instance created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
