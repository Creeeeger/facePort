.class public abstract Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;
    .locals 44

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v10, p10

    int-to-long v6, v4

    sub-int v8, v10, p9

    new-array v9, v8, [I

    move/from16 v13, p9

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v13, v10, :cond_5

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v11}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v19

    const/16 v18, 0x0

    cmpl-float v20, v19, v18

    if-lez v20, :cond_0

    add-float v12, v12, v19

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v21, v6

    move/from16 v20, v8

    goto :goto_5

    :cond_0
    sub-int v16, v2, v15

    aget-object v19, p8, v13

    if-nez v19, :cond_3

    move/from16 v20, v8

    const v8, 0x7fffffff

    if-ne v2, v8, :cond_1

    move-wide/from16 v21, v6

    const/4 v1, 0x0

    const v8, 0x7fffffff

    goto :goto_2

    :cond_1
    if-gez v16, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move/from16 v8, v16

    :goto_1
    move-wide/from16 v21, v6

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0, v1, v8, v1, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIZI)J

    move-result-wide v5

    invoke-interface {v11, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v19

    :goto_3
    move-object/from16 v1, v19

    goto :goto_4

    :cond_3
    move-wide/from16 v21, v6

    move/from16 v20, v8

    goto :goto_3

    :goto_4
    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v6

    sub-int v7, v13, p9

    aput v5, v9, v7

    sub-int v7, v16, v5

    if-gez v7, :cond_4

    const/4 v7, 0x0

    :cond_4
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v5, v5, v16

    add-int/2addr v15, v5

    move/from16 v5, v17

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput-object v1, p8, v13

    move/from16 v17, v5

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    move-object/from16 v5, p7

    move/from16 v8, v20

    move-wide/from16 v6, v21

    goto :goto_0

    :cond_5
    move-wide/from16 v21, v6

    move/from16 v20, v8

    move/from16 v5, v17

    if-nez v14, :cond_6

    sub-int v15, v15, v16

    move/from16 v7, p1

    move-object v3, v0

    move-object/from16 v16, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_6
    const v1, 0x7fffffff

    if-eq v2, v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move/from16 v1, p1

    :goto_6
    add-int/lit8 v4, v14, -0x1

    int-to-long v6, v4

    mul-long v6, v6, v21

    sub-int v4, v1, v15

    move v8, v5

    int-to-long v4, v4

    sub-long/2addr v4, v6

    const-wide/16 v23, 0x0

    cmp-long v11, v4, v23

    if-gez v11, :cond_8

    move-wide/from16 v4, v23

    :cond_8
    long-to-float v11, v4

    div-float/2addr v11, v12

    move/from16 v13, p9

    move-wide/from16 v25, v4

    move/from16 p5, v8

    :goto_7
    const-string/jumbo v8, "weightedSize "

    move-object/from16 v16, v9

    const-string/jumbo v9, "weightUnitSpace "

    const-string/jumbo v3, "totalWeight "

    move-object/from16 v17, v8

    const-string v8, "remainingToTarget "

    move-object/from16 v19, v9

    const-string v9, "arrangementSpacingTotal "

    move/from16 v27, v12

    const-string v12, "fixedSpace "

    move-object/from16 v28, v3

    const-string/jumbo v3, "weightChildrenCount "

    move-wide/from16 v29, v4

    const-string v4, "arrangementSpacingPx "

    const-string/jumbo v5, "targetSpace "

    move-object/from16 v31, v8

    const-string v8, "mainAxisMin "

    if-ge v13, v10, :cond_9

    move-object/from16 v0, p7

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroidx/compose/ui/layout/Measurable;

    invoke-static/range {v32 .. v32}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v10

    move-wide/from16 v32, v6

    mul-float v6, v11, v10

    :try_start_0
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v3

    sub-long v25, v25, v3

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p4

    move/from16 v10, p10

    move-object/from16 v9, v16

    move/from16 v12, v27

    move-wide/from16 v4, v29

    move-wide/from16 v6, v32

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v13, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax "

    move-object/from16 v16, v7

    move/from16 v7, p1

    invoke-static {v13, v8, v2, v7, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v21

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v32

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v13, v31

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v29

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "itemWeight "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v10, v17

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_9
    move-object/from16 v0, p7

    move-wide/from16 v34, v6

    move-object/from16 v38, v19

    move-wide/from16 v36, v29

    move/from16 v7, p1

    move-object/from16 v19, v9

    move-wide/from16 v9, v21

    move-object/from16 v21, v28

    move/from16 v13, p5

    move-object/from16 p5, v12

    move/from16 v22, v15

    const/4 v6, 0x0

    move/from16 v12, p9

    move/from16 v15, p10

    :goto_8
    if-ge v12, v15, :cond_11

    aget-object v28, p8, v12

    if-nez v28, :cond_10

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v15

    move/from16 v28, v14

    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v14

    const/16 v18, 0x0

    cmpl-float v29, v14, v18

    if-lez v29, :cond_f

    cmp-long v29, v25, v23

    move-object/from16 v30, v3

    if-gez v29, :cond_a

    const/16 v29, -0x1

    move-wide/from16 v32, v9

    move/from16 v3, v29

    goto :goto_9

    :cond_a
    if-lez v29, :cond_b

    move-wide/from16 v32, v9

    const/4 v3, 0x1

    goto :goto_9

    :cond_b
    move-wide/from16 v32, v9

    const/4 v3, 0x0

    :goto_9
    int-to-long v9, v3

    sub-long v25, v25, v9

    mul-float v9, v11, v14

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v10, v3

    move/from16 v39, v3

    const/4 v3, 0x0

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v15, :cond_c

    :try_start_1
    iget-boolean v3, v15, Landroidx/compose/foundation/layout/RowColumnParentData;->fill:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    move/from16 v40, v11

    move/from16 v29, v14

    move-object/from16 v14, v21

    move/from16 v21, v9

    goto/16 :goto_d

    :cond_c
    const/4 v3, 0x1

    :goto_a
    if-eqz v3, :cond_d

    const v3, 0x7fffffff

    if-eq v10, v3, :cond_e

    move-object/from16 v3, p0

    move v15, v10

    move/from16 v40, v11

    move/from16 v29, v14

    move-object/from16 v14, v21

    const/4 v11, 0x1

    :goto_b
    move/from16 v21, v9

    move/from16 v9, p4

    goto :goto_c

    :cond_d
    const v3, 0x7fffffff

    :cond_e
    move-object/from16 v3, p0

    move/from16 v40, v11

    move/from16 v29, v14

    move-object/from16 v14, v21

    const/4 v11, 0x1

    const/4 v15, 0x0

    goto :goto_b

    :goto_c
    :try_start_2
    invoke-interface {v3, v15, v10, v11, v9}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIZI)J

    move-result-wide v10
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-interface {v0, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    invoke-interface {v3, v0}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v11

    sub-int v15, v12, p9

    aput v10, v16, v15

    add-int/2addr v6, v10

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput-object v0, p8, v12

    move v13, v10

    move/from16 v10, v22

    move/from16 v15, v28

    move-object/from16 v11, v30

    move-wide/from16 v21, v32

    move-wide/from16 v29, v36

    move-object/from16 v32, v38

    move-object/from16 v33, v31

    move-object/from16 v31, v17

    move/from16 v17, v27

    move-wide/from16 v27, v34

    move-object/from16 v35, p5

    move-object/from16 v34, v19

    move/from16 v19, v40

    goto/16 :goto_e

    :catch_2
    move-exception v0

    :goto_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax "

    invoke-static {v6, v8, v2, v7, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v32

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v11, v30

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v28

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, p5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v34

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v36

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v38

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v40

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "weight "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v21

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "crossAxisDesiredSize nullremainderUnit "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v39

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "childMainAxisSize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All weights <= 0 should have placeables"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move v15, v14

    move-object/from16 v14, v21

    move-object/from16 v33, v31

    move-wide/from16 v29, v36

    move-object/from16 v32, v38

    const/16 v18, 0x0

    move-object/from16 v31, v17

    move/from16 v17, v27

    move-wide/from16 v27, v34

    move-object/from16 v35, p5

    move-object/from16 v34, v19

    move/from16 v19, v11

    move-object v11, v3

    move-object/from16 v3, p0

    move-wide/from16 v41, v9

    move/from16 v9, p4

    move/from16 v10, v22

    move-wide/from16 v21, v41

    :goto_e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p7

    move-object v3, v11

    move/from16 v11, v19

    move-wide/from16 v36, v29

    move-object/from16 v38, v32

    move-object/from16 v19, v34

    move-object/from16 p5, v35

    move-wide/from16 v34, v27

    move/from16 v27, v17

    move-object/from16 v17, v31

    move-object/from16 v31, v33

    move/from16 v41, v15

    move/from16 v15, p10

    move-wide/from16 v42, v21

    move/from16 v22, v10

    move-object/from16 v21, v14

    move/from16 v14, v41

    move-wide/from16 v9, v42

    goto/16 :goto_8

    :cond_11
    move-object/from16 v3, p0

    move/from16 v10, v22

    move-wide/from16 v27, v34

    int-to-long v0, v6

    add-long v0, v0, v27

    long-to-int v0, v0

    sub-int v1, v2, v10

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    move v15, v10

    move v5, v13

    :goto_f
    add-int/2addr v1, v15

    if-gez v1, :cond_12

    move v1, v2

    :cond_12
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v1, v20

    new-array v4, v1, [I

    move v5, v2

    :goto_10
    if-ge v5, v1, :cond_13

    aput v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_13
    move-object/from16 v5, p6

    move-object/from16 v7, v16

    invoke-interface {v3, v0, v7, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->populateMainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p6

    move v5, v0

    move-object/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v1 .. v10}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;[III[IIII)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
