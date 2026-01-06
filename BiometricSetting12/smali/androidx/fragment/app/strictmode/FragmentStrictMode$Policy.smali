.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
.super Ljava/lang/Object;
.source "FragmentStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    }
.end annotation


# static fields
.field public static final LAX:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;


# instance fields
.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;-><init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;)V

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->LAX:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
            ">;",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->flags:Ljava/util/Set;

    iput-object p2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Landroidx/fragment/app/strictmode/FragmentStrictMode$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;-><init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->flags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    return-object v0
.end method
