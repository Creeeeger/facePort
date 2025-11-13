.class public abstract Lcom/android/internal/pm/parsing/PackageParser2$Callback;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pm/parsing/PackageParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
.end method

.method public final blacklist startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .locals 6

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method
