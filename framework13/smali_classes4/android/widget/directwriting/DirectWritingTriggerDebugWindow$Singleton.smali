.class Landroid/widget/directwriting/DirectWritingTriggerDebugWindow$Singleton;
.super Ljava/lang/Object;
.source "DirectWritingTriggerDebugView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final blacklist instance:Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetinstance()Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;
    .locals 1

    sget-object v0, Landroid/widget/directwriting/DirectWritingTriggerDebugWindow$Singleton;->instance:Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

    invoke-direct {v0}, Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;-><init>()V

    sput-object v0, Landroid/widget/directwriting/DirectWritingTriggerDebugWindow$Singleton;->instance:Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method
