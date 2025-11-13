.class public final Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SemCapabilityInfo"
.end annotation


# instance fields
.field private final blacklist description:Ljava/lang/String;

.field private final blacklist title:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1616
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->title:Ljava/lang/String;

    .line 1617
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->description:Ljava/lang/String;

    .line 1618
    return-void
.end method


# virtual methods
.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    .line 1609
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 1

    .line 1600
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->title:Ljava/lang/String;

    return-object v0
.end method
