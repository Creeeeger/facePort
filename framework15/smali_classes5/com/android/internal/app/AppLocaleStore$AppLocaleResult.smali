.class public Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
.super Ljava/lang/Object;
.source "AppLocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppLocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLocaleResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    }
.end annotation


# instance fields
.field public blacklist mAppSupportedLocales:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    iput-object p2, p0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    return-void
.end method
