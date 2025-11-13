.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CODE_PATTERNS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 109

    const/4 v0, 0x6

    new-array v2, v0, [I

    move-object v1, v2

    fill-array-data v2, :array_0

    new-array v3, v0, [I

    move-object v2, v3

    fill-array-data v3, :array_1

    new-array v4, v0, [I

    move-object v3, v4

    fill-array-data v4, :array_2

    new-array v5, v0, [I

    move-object v4, v5

    fill-array-data v5, :array_3

    new-array v6, v0, [I

    move-object v5, v6

    fill-array-data v6, :array_4

    new-array v7, v0, [I

    move-object v6, v7

    fill-array-data v7, :array_5

    new-array v8, v0, [I

    move-object v7, v8

    fill-array-data v8, :array_6

    new-array v9, v0, [I

    move-object v8, v9

    fill-array-data v9, :array_7

    new-array v10, v0, [I

    move-object v9, v10

    fill-array-data v10, :array_8

    new-array v11, v0, [I

    move-object v10, v11

    fill-array-data v11, :array_9

    new-array v12, v0, [I

    move-object v11, v12

    fill-array-data v12, :array_a

    new-array v13, v0, [I

    move-object v12, v13

    fill-array-data v13, :array_b

    new-array v14, v0, [I

    move-object v13, v14

    fill-array-data v14, :array_c

    new-array v15, v0, [I

    move-object v14, v15

    fill-array-data v15, :array_d

    new-array v15, v0, [I

    move-object/from16 v16, v15

    fill-array-data v16, :array_e

    move-object/from16 v108, v1

    new-array v1, v0, [I

    move-object/from16 v16, v1

    fill-array-data v1, :array_f

    new-array v1, v0, [I

    move-object/from16 v17, v1

    fill-array-data v1, :array_10

    new-array v1, v0, [I

    move-object/from16 v18, v1

    fill-array-data v1, :array_11

    new-array v1, v0, [I

    move-object/from16 v19, v1

    fill-array-data v1, :array_12

    new-array v1, v0, [I

    move-object/from16 v20, v1

    fill-array-data v1, :array_13

    new-array v1, v0, [I

    move-object/from16 v21, v1

    fill-array-data v1, :array_14

    new-array v1, v0, [I

    move-object/from16 v22, v1

    fill-array-data v1, :array_15

    new-array v1, v0, [I

    move-object/from16 v23, v1

    fill-array-data v1, :array_16

    new-array v1, v0, [I

    move-object/from16 v24, v1

    fill-array-data v1, :array_17

    new-array v1, v0, [I

    move-object/from16 v25, v1

    fill-array-data v1, :array_18

    new-array v1, v0, [I

    move-object/from16 v26, v1

    fill-array-data v1, :array_19

    new-array v1, v0, [I

    move-object/from16 v27, v1

    fill-array-data v1, :array_1a

    new-array v1, v0, [I

    move-object/from16 v28, v1

    fill-array-data v1, :array_1b

    new-array v1, v0, [I

    move-object/from16 v29, v1

    fill-array-data v1, :array_1c

    new-array v1, v0, [I

    move-object/from16 v30, v1

    fill-array-data v1, :array_1d

    new-array v1, v0, [I

    move-object/from16 v31, v1

    fill-array-data v1, :array_1e

    new-array v1, v0, [I

    move-object/from16 v32, v1

    fill-array-data v1, :array_1f

    new-array v1, v0, [I

    move-object/from16 v33, v1

    fill-array-data v1, :array_20

    new-array v1, v0, [I

    move-object/from16 v34, v1

    fill-array-data v1, :array_21

    new-array v1, v0, [I

    move-object/from16 v35, v1

    fill-array-data v1, :array_22

    new-array v1, v0, [I

    move-object/from16 v36, v1

    fill-array-data v1, :array_23

    new-array v1, v0, [I

    move-object/from16 v37, v1

    fill-array-data v1, :array_24

    new-array v1, v0, [I

    move-object/from16 v38, v1

    fill-array-data v1, :array_25

    new-array v1, v0, [I

    move-object/from16 v39, v1

    fill-array-data v1, :array_26

    new-array v1, v0, [I

    move-object/from16 v40, v1

    fill-array-data v1, :array_27

    new-array v1, v0, [I

    move-object/from16 v41, v1

    fill-array-data v1, :array_28

    new-array v1, v0, [I

    move-object/from16 v42, v1

    fill-array-data v1, :array_29

    new-array v1, v0, [I

    move-object/from16 v43, v1

    fill-array-data v1, :array_2a

    new-array v1, v0, [I

    move-object/from16 v44, v1

    fill-array-data v1, :array_2b

    new-array v1, v0, [I

    move-object/from16 v45, v1

    fill-array-data v1, :array_2c

    new-array v1, v0, [I

    move-object/from16 v46, v1

    fill-array-data v1, :array_2d

    new-array v1, v0, [I

    move-object/from16 v47, v1

    fill-array-data v1, :array_2e

    new-array v1, v0, [I

    move-object/from16 v48, v1

    fill-array-data v1, :array_2f

    new-array v1, v0, [I

    move-object/from16 v49, v1

    fill-array-data v1, :array_30

    new-array v1, v0, [I

    move-object/from16 v50, v1

    fill-array-data v1, :array_31

    new-array v1, v0, [I

    move-object/from16 v51, v1

    fill-array-data v1, :array_32

    new-array v1, v0, [I

    move-object/from16 v52, v1

    fill-array-data v1, :array_33

    new-array v1, v0, [I

    move-object/from16 v53, v1

    fill-array-data v1, :array_34

    new-array v1, v0, [I

    move-object/from16 v54, v1

    fill-array-data v1, :array_35

    new-array v1, v0, [I

    move-object/from16 v55, v1

    fill-array-data v1, :array_36

    new-array v1, v0, [I

    move-object/from16 v56, v1

    fill-array-data v1, :array_37

    new-array v1, v0, [I

    move-object/from16 v57, v1

    fill-array-data v1, :array_38

    new-array v1, v0, [I

    move-object/from16 v58, v1

    fill-array-data v1, :array_39

    new-array v1, v0, [I

    move-object/from16 v59, v1

    fill-array-data v1, :array_3a

    new-array v1, v0, [I

    move-object/from16 v60, v1

    fill-array-data v1, :array_3b

    new-array v1, v0, [I

    move-object/from16 v61, v1

    fill-array-data v1, :array_3c

    new-array v1, v0, [I

    move-object/from16 v62, v1

    fill-array-data v1, :array_3d

    new-array v1, v0, [I

    move-object/from16 v63, v1

    fill-array-data v1, :array_3e

    new-array v1, v0, [I

    move-object/from16 v64, v1

    fill-array-data v1, :array_3f

    new-array v1, v0, [I

    move-object/from16 v65, v1

    fill-array-data v1, :array_40

    new-array v1, v0, [I

    move-object/from16 v66, v1

    fill-array-data v1, :array_41

    new-array v1, v0, [I

    move-object/from16 v67, v1

    fill-array-data v1, :array_42

    new-array v1, v0, [I

    move-object/from16 v68, v1

    fill-array-data v1, :array_43

    new-array v1, v0, [I

    move-object/from16 v69, v1

    fill-array-data v1, :array_44

    new-array v1, v0, [I

    move-object/from16 v70, v1

    fill-array-data v1, :array_45

    new-array v1, v0, [I

    move-object/from16 v71, v1

    fill-array-data v1, :array_46

    new-array v1, v0, [I

    move-object/from16 v72, v1

    fill-array-data v1, :array_47

    new-array v1, v0, [I

    move-object/from16 v73, v1

    fill-array-data v1, :array_48

    new-array v1, v0, [I

    move-object/from16 v74, v1

    fill-array-data v1, :array_49

    new-array v1, v0, [I

    move-object/from16 v75, v1

    fill-array-data v1, :array_4a

    new-array v1, v0, [I

    move-object/from16 v76, v1

    fill-array-data v1, :array_4b

    new-array v1, v0, [I

    move-object/from16 v77, v1

    fill-array-data v1, :array_4c

    new-array v1, v0, [I

    move-object/from16 v78, v1

    fill-array-data v1, :array_4d

    new-array v1, v0, [I

    move-object/from16 v79, v1

    fill-array-data v1, :array_4e

    new-array v1, v0, [I

    move-object/from16 v80, v1

    fill-array-data v1, :array_4f

    new-array v1, v0, [I

    move-object/from16 v81, v1

    fill-array-data v1, :array_50

    new-array v1, v0, [I

    move-object/from16 v82, v1

    fill-array-data v1, :array_51

    new-array v1, v0, [I

    move-object/from16 v83, v1

    fill-array-data v1, :array_52

    new-array v1, v0, [I

    move-object/from16 v84, v1

    fill-array-data v1, :array_53

    new-array v1, v0, [I

    move-object/from16 v85, v1

    fill-array-data v1, :array_54

    new-array v1, v0, [I

    move-object/from16 v86, v1

    fill-array-data v1, :array_55

    new-array v1, v0, [I

    move-object/from16 v87, v1

    fill-array-data v1, :array_56

    new-array v1, v0, [I

    move-object/from16 v88, v1

    fill-array-data v1, :array_57

    new-array v1, v0, [I

    move-object/from16 v89, v1

    fill-array-data v1, :array_58

    new-array v1, v0, [I

    move-object/from16 v90, v1

    fill-array-data v1, :array_59

    new-array v1, v0, [I

    move-object/from16 v91, v1

    fill-array-data v1, :array_5a

    new-array v1, v0, [I

    move-object/from16 v92, v1

    fill-array-data v1, :array_5b

    new-array v1, v0, [I

    move-object/from16 v93, v1

    fill-array-data v1, :array_5c

    new-array v1, v0, [I

    move-object/from16 v94, v1

    fill-array-data v1, :array_5d

    new-array v1, v0, [I

    move-object/from16 v95, v1

    fill-array-data v1, :array_5e

    new-array v1, v0, [I

    move-object/from16 v96, v1

    fill-array-data v1, :array_5f

    new-array v1, v0, [I

    move-object/from16 v97, v1

    fill-array-data v1, :array_60

    new-array v1, v0, [I

    move-object/from16 v98, v1

    fill-array-data v1, :array_61

    new-array v1, v0, [I

    move-object/from16 v99, v1

    fill-array-data v1, :array_62

    new-array v1, v0, [I

    move-object/from16 v100, v1

    fill-array-data v1, :array_63

    new-array v1, v0, [I

    move-object/from16 v101, v1

    fill-array-data v1, :array_64

    new-array v1, v0, [I

    move-object/from16 v102, v1

    fill-array-data v1, :array_65

    new-array v1, v0, [I

    move-object/from16 v103, v1

    fill-array-data v1, :array_66

    new-array v1, v0, [I

    move-object/from16 v104, v1

    fill-array-data v1, :array_67

    new-array v1, v0, [I

    move-object/from16 v105, v1

    fill-array-data v1, :array_68

    new-array v0, v0, [I

    move-object/from16 v106, v0

    fill-array-data v0, :array_69

    const/4 v0, 0x7

    new-array v0, v0, [I

    move-object/from16 v107, v0

    fill-array-data v0, :array_6a

    move-object/from16 v1, v108

    filled-new-array/range {v1 .. v107}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_26
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_29
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_37
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_38
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_47
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_4a
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_4f
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_51
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_53
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_55
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_56
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_57
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_58
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_59
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_5b
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_5d
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_60
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_61
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_62
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_63
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_64
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_65
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_66
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_67
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_68
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_69
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_6a
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method
